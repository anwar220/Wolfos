# classes4.dex

.class Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSetupCompleteObserver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field private mUserId:I

.field final synthetic this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    :cond_13
    return-void
.end method

.method private isUserSetupComplete()Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    move v3, v1

    :cond_18
    return v3
.end method

.method private registerObserver()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    return-void
.end method

.method private setEmptyShortcutTargetIfNeeded()V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040243

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v4, v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3b
    if-ltz v5, :cond_51

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    return-void

    :cond_4e
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    :cond_51
    iget v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v6, ""

    invoke-static {v0, v2, v6, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private unregisterObserver()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->setEmptyShortcutTargetIfNeeded()V

    :cond_c
    return-void
.end method

.method onUserSwitched(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    :cond_13
    return-void
.end method
