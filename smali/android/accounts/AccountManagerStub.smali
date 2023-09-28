# classes.dex

.class public interface abstract Landroid/accounts/AccountManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/accounts/AccountManagerStub;
    .registers 1

    const-class v0, Landroid/accounts/AccountManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract handleIfContainsXiaomiAccountType(Landroid/content/Intent;)Z
.end method
