# classes2.dex

.class public final synthetic Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    iput-boolean p2, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;->f$0:Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$notifyAudioDescriptionbyDefaultStateChanged$3(Landroid/view/accessibility/AccessibilityManager$AudioDescriptionRequestedChangeListener;Z)V

    return-void
.end method
