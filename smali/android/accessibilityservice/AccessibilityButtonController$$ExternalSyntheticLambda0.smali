# classes.dex

.class public final synthetic Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/AccessibilityButtonController;

.field public final synthetic f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityButtonController;->lambda$dispatchAccessibilityButtonClicked$0$android-accessibilityservice-AccessibilityButtonController(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    return-void
.end method
