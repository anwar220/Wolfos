# classes4.dex

.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$createShortcutWarningDialog$1$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;)V

    return-void
.end method
