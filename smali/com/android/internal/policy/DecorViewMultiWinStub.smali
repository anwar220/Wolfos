# classes4.dex

.class public interface abstract Lcom/android/internal/policy/DecorViewMultiWinStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Lcom/android/internal/policy/DecorViewMultiWinStub;
    .registers 1

    const-class v0, Lcom/android/internal/policy/DecorViewMultiWinStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorViewMultiWinStub;

    return-object v0
.end method


# virtual methods
.method public abstract getIsNeedToChangeCaptionViewState()Z
.end method

.method public abstract inflateSplitDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
.end method

.method public abstract isMiuiMultiWinChangeSupport()Z
.end method

.method public abstract isNeedToChangeCaptionView(II)Z
.end method

.method public abstract showOrHideHighlightView(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;ZZ)V
.end method
