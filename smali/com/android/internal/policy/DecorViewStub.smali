# classes4.dex

.class public interface abstract Lcom/android/internal/policy/DecorViewStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/android/internal/policy/DecorViewStub;
    .registers 1

    const-class v0, Lcom/android/internal/policy/DecorViewStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorViewStub;

    return-object v0
.end method


# virtual methods
.method public abstract createActionMode(ILandroid/view/ActionMode$Callback;Landroid/view/View;)Landroid/view/ActionMode;
.end method
