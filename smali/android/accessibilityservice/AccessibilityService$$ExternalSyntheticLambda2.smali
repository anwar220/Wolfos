# classes.dex

.class public final synthetic Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Landroid/accessibilityservice/AccessibilityService;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;->f$0:Landroid/accessibilityservice/AccessibilityService;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;->f$2:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;->f$0:Landroid/accessibilityservice/AccessibilityService;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;->f$2:Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/accessibilityservice/AccessibilityService;->lambda$takeScreenshot$0$android-accessibilityservice-AccessibilityService(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/os/Bundle;)V

    return-void
.end method
