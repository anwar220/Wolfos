# classes2.dex

.class public interface abstract Landroid/inputmethodservice/InputMethodServiceStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/inputmethodservice/InputMethodServiceStub;
    .registers 1

    const-class v0, Landroid/inputmethodservice/InputMethodServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract addMiuiBottomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public abstract afterComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public isNeedKeepPortrait(ILandroid/content/res/Resources;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onDestroy(Landroid/content/Context;)V
.end method

.method public abstract onWindowHidden(Landroid/inputmethodservice/InputMethodService;)V
.end method

.method public abstract onWindowShown(Landroid/inputmethodservice/InputMethodService;)V
.end method
