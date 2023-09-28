# classes.dex

.class public interface abstract Landroid/accounts/ChooseTypeAndAccountActivityStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/accounts/ChooseTypeAndAccountActivityStub;
    .registers 1

    const-class v0, Landroid/accounts/ChooseTypeAndAccountActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/ChooseTypeAndAccountActivityStub;

    return-object v0
.end method


# virtual methods
.method public abstract toMiuiChooseAccountTypeActivity(Landroid/content/Intent;)V
.end method
