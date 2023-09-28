# classes4.dex

.class public interface abstract Landroid/widget/EditTextStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Landroid/widget/EditTextStub;
    .registers 1

    const-class v0, Landroid/widget/EditTextStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditTextStub;

    return-object v0
.end method


# virtual methods
.method public afterPerformAccessibilityActionClick(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 3

    return-void
.end method

.method public needInterceptPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
