# classes4.dex

.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    return-void
.end method


# virtual methods
.method public final onDismissed()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
