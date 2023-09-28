# classes4.dex

.class public interface abstract Lcom/android/internal/app/AlertControllerStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/android/internal/app/AlertControllerStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/AlertControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AlertControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract performButtonHaptic(Landroid/view/View;)V
.end method

.method public abstract positiveClick()V
.end method
