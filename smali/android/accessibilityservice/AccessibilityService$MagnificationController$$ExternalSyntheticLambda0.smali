# classes.dex

.class public final synthetic Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

.field public final synthetic f$1:Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

.field public final synthetic f$2:Landroid/graphics/Region;

.field public final synthetic f$3:Landroid/accessibilityservice/MagnificationConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$0:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    iput-object p4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$3:Landroid/accessibilityservice/MagnificationConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$0:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$1:Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;->f$3:Landroid/accessibilityservice/MagnificationConfig;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->lambda$dispatchMagnificationChanged$0$android-accessibilityservice-AccessibilityService$MagnificationController(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method
