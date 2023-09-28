# classes4.dex

.class public interface abstract Landroid/widget/EditorStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Landroid/widget/EditorStub;
    .registers 1

    const-class v0, Landroid/widget/EditorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditorStub;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/widget/TextView;)V
    .registers 2

    return-void
.end method

.method public insertionHandlePositionChanged(ILandroid/graphics/RectF;)V
    .registers 3

    return-void
.end method

.method public needSendHandlePosition()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public selectionHandlePositionChanged(ZILandroid/graphics/RectF;)V
    .registers 4

    return-void
.end method
