# classes.dex

.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;


# static fields
.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "android.accounts.extra.ERROR_CODE"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$android-accounts-CantAddAccountActivity()Ljava/lang/String;
    .registers 2

    const v0, 0x1040385

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x109003c

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    const v0, 0x10202a8

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/accounts/CantAddAccountActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/CantAddAccountActivity;)V

    const-string v3, "Core.CANT_ADD_ACCOUNT_MESSAGE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
