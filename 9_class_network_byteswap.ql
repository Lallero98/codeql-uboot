import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap() {
        exists (MacroInvocation m | m.getMacroName().regexpMatch("ntoh(s|l|ll)") and this = m.getExpr()
        )
    }
}

from NetworkByteSwap nbs
select nbs, "Network byte swap"