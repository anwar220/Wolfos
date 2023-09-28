# classes2.dex

.class public final Landroid/view/autofill/AutofillClientController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/autofill/AutofillManager$AutofillClient;
.implements Landroid/util/Dumpable;


# static fields
.field public static final AUTOFILL_RESET_NEEDED:Ljava/lang/String; = "@android:autofillResetNeeded"

.field public static final AUTO_FILL_AUTH_WHO_PREFIX:Ljava/lang/String; = "@android:autoFillAuth:"

.field public static final DEBUG:Z

.field public static final DUMPABLE_NAME:Ljava/lang/String; = "AutofillManager"

.field public static final LAST_AUTOFILL_ID:Ljava/lang/String; = "android:lastAutofillId"

.field private static final LOG_TAG:Ljava/lang/String; = "autofill_client"

.field private static final TAG:Ljava/lang/String; = "AutofillClientController"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAutoFillIgnoreFirstResumePause:Z

.field private mAutoFillResetNeeded:Z

.field private mAutofillManager:Landroid/view/autofill/AutofillManager;

.field private mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

.field public mLastAutofillId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "autofill_client"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fffffff  # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    iput-object p1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getAutofillManager()Landroid/view/autofill/AutofillManager;
    .registers 3

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    :cond_10
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    return-object v0
.end method


# virtual methods
.method public autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 13

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-string v2, "@android:autoFillAuth:"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_27

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillClientController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V

    :cond_9
    return-void
.end method

.method public autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;
    .registers 7

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v3

    if-ne v3, p2, :cond_2e

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 6

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2c

    return-object v3

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2f
    const/4 v1, 0x0

    return-object v1
.end method

.method public autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;
    .registers 9

    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3b

    array-length v4, p1

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_3b

    aget-object v6, v0, v5

    if-nez v6, :cond_38

    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3e
    return-object v0
.end method

.method public autofillClientGetActivityToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public autofillClientGetComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;
    .registers 3

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->getNextAutofillId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method public autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z
    .registers 8

    array-length v0, p1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_28

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillClientController;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v4}, Landroid/view/View;->isVisibleToUser()Z

    move-result v5

    aput-boolean v5, v1, v2

    goto :goto_25

    :cond_1b
    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->isVisibleToUserForAutofill(I)Z

    move-result v5

    aput-boolean v5, v1, v2

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_28
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autofillClientGetViewVisibility(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillClientController"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-object v1
.end method

.method public autofillClientIsCompatibilityModeEnabled()Z
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public autofillClientIsFillUiShowing()Z
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public autofillClientIsVisibleForAutofill()Z
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVisibleForAutofill()Z

    move-result v0

    return v0
.end method

.method public autofillClientRequestHideFillUi()Z
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    const/4 v0, 0x1

    return v0
.end method

.method public autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
    .registers 14

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    new-instance v1, Landroid/view/autofill/AutofillPopupWindow;

    invoke-direct {v1, p5}, Landroid/view/autofill/AutofillPopupWindow;-><init>(Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    :goto_11
    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V

    if-nez v0, :cond_28

    iget-object v1, p0, Landroid/view/autofill/AutofillClientController;->mAutofillPopupWindow:Landroid/view/autofill/AutofillPopupWindow;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public autofillClientResetableStateAvailable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    return-void
.end method

.method public autofillClientRunOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, ""

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1f

    invoke-virtual {v1, v2, p1}, Landroid/view/autofill/AutofillManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Autofill Compat Mode: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27

    :cond_1f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No AutofillManager"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method public enableAutofillCompatibilityIfNeeded()V
    .registers 3

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isAutofillCompatibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->enableCompatibilityMode()V

    :cond_17
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    const-string v0, "AutofillManager"

    return-object v0
.end method

.method public getNextAutofillId()I
    .registers 3

    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_c

    const v0, 0x3fffffff  # 1.9999999f

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    :cond_c
    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    return v0
.end method

.method public isDisablingEnterExitEventForAutofill()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onActivityAttached(Landroid/app/Application;)V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Application;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    return-void
.end method

.method public onActivityBackPressed(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_d

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "@android:autofillResetNeeded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    const-string v0, "android:lastAutofillId"

    const v1, 0x3fffffff  # 1.9999999f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onCreate(Landroid/os/Bundle;)V

    :cond_1f
    return-void
.end method

.method public onActivityDestroyed()V
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onActivityFinishing()V

    :cond_13
    return-void
.end method

.method public onActivityFinish(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_d

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method public onActivityPaused()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    const-string v1, "AutofillClientController"

    if-nez v0, :cond_3a

    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill notifyViewExited "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;)V

    :cond_39
    goto :goto_57

    :cond_3a
    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill got first pause "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    :cond_57
    :goto_57
    return-void
.end method

.method public onActivityPerformResume(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_24

    iput-boolean p1, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-eqz p1, :cond_24

    sget-boolean v0, Landroid/view/autofill/AutofillClientController;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autofill will ignore first pause when relaunching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillClientController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method public onActivityResumed()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillClientController;->enableAutofillCompatibilityIfNeeded()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillIgnoreFirstResumePause:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public onActivityStarted()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->onVisibleForAutofill()V

    :cond_b
    return-void
.end method

.method public onActivityStopped(Landroid/content/Intent;Z)V
    .registers 5

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->onInvisibleForAutofill(Z)V

    goto :goto_23

    :cond_e
    if-eqz p1, :cond_23

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillClientController;->restoreAutofillSaveUi(Landroid/content/Intent;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onDispatchActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    move-object v0, p3

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/autofill/AutofillManager;->onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Landroid/view/autofill/AutofillClientController;->mLastAutofillId:I

    const-string v1, "android:lastAutofillId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillClientController;->mAutoFillResetNeeded:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    const-string v1, "@android:autofillResetNeeded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_18
    return-void
.end method

.method public onStartActivity(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_3e

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillClientController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    nop

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3e
    return-void
.end method

.method public restoreAutofillSaveUi(Landroid/content/Intent;)V
    .registers 5

    nop

    const-string v0, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.view.autofill.extra.RESTORE_CROSS_ACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillClientController;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/autofill/AutofillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V

    return-void
.end method
