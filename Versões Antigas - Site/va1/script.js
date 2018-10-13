function zoom()
{
var proporcao = screen.deviceXDPI / screen.logicalXDPI;
var zoom_mantido = 1 / proporcao;
parent.document.body.style.zoom = zoom_mantido;
}