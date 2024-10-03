package generator

import (
	"fmt"

	"android/soong/android"
)

func motoExpandVariables(ctx android.ModuleContext, in string) string {
	motoVars := ctx.Config().VendorConfig("motoVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if motoVars.IsSet(name) {
			return motoVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
