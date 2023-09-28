# classes3.dex

.class public Landroid/view/ViewForceDarkStateStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/view/ViewForceDarkStateStub;
    .registers 1

    const-class v0, Landroid/view/ViewForceDarkStateStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewForceDarkStateStub;

    return-object v0
.end method


# virtual methods
.method public cleanForceDarkViewTreeDirty()V
    .registers 1

    return-void
.end method

.method public getBackgroundBitmapPalette()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundDrawableName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapPalette(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getForceDarkUsageHint()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutXmlName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsageHint()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getViewClass()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public hasText()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isApplyForceDarkConfig()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBackgroundLoadedFromResources()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isForceDarkAllowed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isForceDarkViewDirtyRoot()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isForceDarkViewTreeDirty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public markForceDarkDirtyRoot()V
    .registers 1

    return-void
.end method

.method public markForceDarkViewTreeDirty()V
    .registers 1

    return-void
.end method

.method public resetForceDarkState()V
    .registers 1

    return-void
.end method

.method public setForceDarkAllowed(Z)V
    .registers 2

    return-void
.end method

.method public setHostView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setLayoutXmlName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setXmlIndex(I)V
    .registers 2

    return-void
.end method
