# classes.dex

.class Landroid/app/KeyguardManager$1;
.super Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;)V
    .registers 2

    iput-object p1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onKeyguardLockedStateChanged$0(Landroid/app/KeyguardManager$KeyguardLockedStateListener;Z)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/app/KeyguardManager$KeyguardLockedStateListener;->onKeyguardLockedStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onKeyguardLockedStateChanged$1(ZLandroid/app/KeyguardManager$KeyguardLockedStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    new-instance v0, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/KeyguardManager$KeyguardLockedStateListener;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onKeyguardLockedStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmKeyguardLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/app/KeyguardManager$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
