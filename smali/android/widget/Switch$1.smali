# classes4.dex

.class Landroid/widget/Switch$1;
.super Landroid/util/FloatProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/widget/Switch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/Switch;)Ljava/lang/Float;
    .registers 3

    invoke-static {p1}, Landroid/widget/Switch;->-$$Nest$fgetmThumbPosition(Landroid/widget/Switch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch$1;->get(Landroid/widget/Switch;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/widget/Switch;F)V
    .registers 3

    invoke-static {p1, p2}, Landroid/widget/Switch;->-$$Nest$msetThumbPosition(Landroid/widget/Switch;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Switch$1;->setValue(Landroid/widget/Switch;F)V

    return-void
.end method
