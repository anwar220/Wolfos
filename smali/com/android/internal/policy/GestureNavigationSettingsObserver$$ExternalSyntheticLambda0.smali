# classes4.dex

.class public final synthetic Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->lambda$register$0$com-android-internal-policy-GestureNavigationSettingsObserver(Ljava/lang/Runnable;)V

    return-void
.end method
