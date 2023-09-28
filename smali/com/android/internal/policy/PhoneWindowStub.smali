# classes4.dex

.class public interface abstract Lcom/android/internal/policy/PhoneWindowStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/android/internal/policy/PhoneWindowStub;
    .registers 1

    const-class v0, Lcom/android/internal/policy/PhoneWindowStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindowStub;

    return-object v0
.end method


# virtual methods
.method public abstract isSplitMode(Landroid/content/Context;)Z
.end method

.method public onNavigationBarColorChange(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2

    return-void
.end method
