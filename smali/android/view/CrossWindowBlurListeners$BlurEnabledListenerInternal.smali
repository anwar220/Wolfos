# classes3.dex

.class final Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
.super Landroid/view/ICrossWindowBlurEnabledListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CrossWindowBlurListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlurEnabledListenerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/CrossWindowBlurListeners;


# direct methods
.method private constructor <init>(Landroid/view/CrossWindowBlurListeners;)V
    .registers 2

    iput-object p1, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-direct {p0}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;)V

    return-void
.end method


# virtual methods
.method public onCrossWindowBlurEnabledChanged(Z)V
    .registers 9

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v1, p1}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_45

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v4}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    iget-object v4, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v4}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/Consumer;

    iget-object v6, p0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;->this$0:Landroid/view/CrossWindowBlurListeners;

    invoke-static {v6}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5, v6, p1}, Landroid/view/CrossWindowBlurListeners;->-$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_3f

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_39
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw v1
.end method
