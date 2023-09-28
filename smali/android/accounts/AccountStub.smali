# classes.dex

.class public interface abstract Landroid/accounts/AccountStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/accounts/AccountStub;
    .registers 1

    const-class v0, Landroid/accounts/AccountStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountStub;

    return-object v0
.end method


# virtual methods
.method public abstract hideNameToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
