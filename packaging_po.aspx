<%@ Import Namespace="sfc" %>
<%@ Import Namespace="sfc.BL" %>
<%@ Import Namespace="sfc.BO" %>

<!-- #include file="~/core.aspx" -->
<script runat="server" language="C#">
protected void acumulate_po()
{
    bls.get_plnbl().accumulate_production_order_m2o(values.get(key.BARCODE), 1);
}
protected void check_sku_for_pull()
{
    if (bls.get_plnbl().check_sku_for_pull(values.get(key.SKU))) result.set(key.ISPULL, "1");
    else  result.set(key.ISPULL, "0");
}
</script>