# classes3.dex

.class public interface abstract Landroid/view/ForceDarkHelperStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/view/ForceDarkHelperStub;
    .registers 1

    const-class v0, Landroid/view/ForceDarkHelperStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ForceDarkHelperStub;

    return-object v0
.end method


# virtual methods
.method public abstract addForceDarkProperty(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;)V
.end method

.method public abstract changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
.end method

.method public abstract changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
.end method

.method public abstract changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
.end method

.method public abstract dispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)Z
.end method

.method public abstract drawBlackMask(Landroid/view/View;Landroid/graphics/Canvas;)Z
.end method

.method public enableHardwareAccelerationIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract loadForceDarkConfig(Landroid/view/ViewRootImpl;)V
.end method

.method public makeDark(I)I
    .registers 2

    return p1
.end method

.method public makeDark(Landroid/graphics/Paint;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public makeLight(Landroid/graphics/Paint;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onForceDarkConfigChanged(Ljava/lang/String;)V
.end method

.method public abstract registerAppDarkModeObserver(Landroid/content/Context;)V
.end method

.method public abstract shouldInterceptUiModeRelaunch(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
.end method

.method public abstract updateAfterViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
.end method

.method public abstract updateBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)Z
.end method

.method public abstract updateBackgroundRenderNode(Landroid/view/View;Landroid/graphics/RenderNode;)Z
.end method

.method public abstract updateBeforeViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
.end method

.method public abstract updateForceDarkAllowedAttr(Landroid/view/View;Landroid/content/res/TypedArray;)Z
.end method

.method public abstract updateForceDarkBeginRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V
.end method

.method public abstract updateForceDarkDecorView(Landroid/view/View;)V
.end method

.method public abstract updateForceDarkEndRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V
.end method

.method public updateForceDarkMode(Landroid/view/ViewRootImpl;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract updateForceDarkSplashScreen(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Z
.end method
