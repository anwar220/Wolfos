# classes4.dex

.class public interface abstract Lcom/android/internal/app/SuspendedAppActivityStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Lcom/android/internal/app/SuspendedAppActivityStub;
    .registers 1

    const-class v0, Lcom/android/internal/app/SuspendedAppActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SuspendedAppActivityStub;

    return-object v0
.end method


# virtual methods
.method public abstract ensureJumpToAppTimer(Landroid/content/pm/SuspendDialogInfo;)Z
.end method

.method public abstract getTimerTargetIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method
