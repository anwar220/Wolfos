# classes4.dex

.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$createMiuiShortcutWarningDialog$2$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;I)V

    return-void
.end method
