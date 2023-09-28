# classes4.dex

.class Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;-><init>(Landroid/content/Context;IILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-void
.end method

.method private isComponentIdExistingInOtherShortcut()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getShortcutType()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected shortcut type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f  #0x1
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_1d  #0x0
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_f  #00000001
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->isComponentIdExistingInOtherShortcut()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :cond_15
    invoke-super {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    return-void
.end method
