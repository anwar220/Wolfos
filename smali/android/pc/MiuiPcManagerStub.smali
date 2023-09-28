# classes3.dex

.class public interface abstract Landroid/pc/MiuiPcManagerStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pc/MiuiPcManagerStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Landroid/pc/MiuiPcManagerStub;
    .registers 1

    invoke-static {}, Landroid/pc/MiuiPcManagerStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/pc/MiuiPcManagerStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract actionDisablePip()V
.end method

.method public abstract getPcLauncherForUser(I)V
.end method

.method public abstract getPcRunStatus()Z
.end method

.method public abstract getTaskCanResize(I)Z
.end method

.method public abstract getWidgetRect()Landroid/graphics/Rect;
.end method

.method public abstract isOnPcMode()Z
.end method

.method public abstract isOnPcModeForUser(I)Z
.end method

.method public abstract isPcEnable()Z
.end method

.method public abstract onMouseHoverAtBottom(IJ)V
.end method

.method public abstract onMouseHoverAtTop(IJ)V
.end method

.method public abstract servAppOrientation(I)V
.end method

.method public abstract showTopBarDelayed(I)V
.end method

.method public abstract upDateConfig(Landroid/content/res/Configuration;)V
.end method
