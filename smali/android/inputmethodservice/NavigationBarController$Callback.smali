# classes2.dex

.class interface abstract Landroid/inputmethodservice/NavigationBarController$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Callback"
.end annotation


# static fields
.field public static final NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Callback$1;

    invoke-direct {v0}, Landroid/inputmethodservice/NavigationBarController$Callback$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onNavButtonFlagsChanged(I)V
    .registers 2

    return-void
.end method

.method public onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 2

    return-void
.end method

.method public onViewInitialized()V
    .registers 1

    return-void
.end method

.method public onWindowShown()V
    .registers 1

    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 2

    const-string v0, "No-op implementation"

    return-object v0
.end method

.method public updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 3

    return-void
.end method
