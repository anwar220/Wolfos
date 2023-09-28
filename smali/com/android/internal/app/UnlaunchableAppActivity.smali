# classes4.dex

.class public Lcom/android/internal/app/UnlaunchableAppActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final TAG:Ljava/lang/String; = "UnlaunchableAppActivity"

.field private static final UNLAUNCHABLE_REASON_QUIET_MODE:I = 0x1


# instance fields
.field private mReason:I

.field private mTarget:Landroid/content/IntentSender;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final createBaseIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .registers 4

    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getDialogMessage()Ljava/lang/String;
    .registers 4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDialogTitle()Ljava/lang/String;
    .registers 4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$getDialogMessage$1$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;
    .registers 2

    const v0, 0x10409f8

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getDialogTitle$0$com-android-internal-app-UnlaunchableAppActivity()Ljava/lang/String;
    .registers 2

    const v0, 0x10409f9

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onClick$2$com-android-internal-app-UnlaunchableAppActivity(Landroid/os/UserManager;)V
    .registers 5

    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "unlaunchable_reason"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const-string v2, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    iget v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    const-string v5, "UnlaunchableAppActivity"

    if-ne v2, v4, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Stopping."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void

    :cond_51
    const/4 v2, 0x0

    iget v4, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    if-ne v4, v0, :cond_a0

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v7, 0x0

    if-ne v6, v0, :cond_81

    const v6, 0x10409fa

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v8, 0x1040000

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_87

    :cond_81
    const v6, 0x104000a

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_87
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->create()V

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unlaunchable type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    return-void
.end method
