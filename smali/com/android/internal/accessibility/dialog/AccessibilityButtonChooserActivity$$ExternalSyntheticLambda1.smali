# classes4.dex

.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->lambda$onCreate$0$com-android-internal-accessibility-dialog-AccessibilityButtonChooserActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method