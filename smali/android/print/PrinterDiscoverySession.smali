# classes3.dex

.class public final Landroid/print/PrinterDiscoverySession;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;,
        Landroid/print/PrinterDiscoverySession$SessionHandler;,
        Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static final MSG_PRINTERS_ADDED:I = 0x1

.field private static final MSG_PRINTERS_REMOVED:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsPrinterDiscoveryStarted:Z

.field private mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

.field private mObserver:Landroid/print/IPrinterDiscoveryObserver;

.field private final mPrintManager:Landroid/print/IPrintManager;

.field private final mPrinters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandlePrintersAdded(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePrintersRemoved(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iput p3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    new-instance v0, Landroid/print/PrinterDiscoverySession$SessionHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/print/PrinterDiscoverySession$SessionHandler;-><init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;

    invoke-direct {v0, p0}, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;-><init>(Landroid/print/PrinterDiscoverySession;)V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    :try_start_20
    invoke-interface {p1, v0, p3}, Landroid/print/IPrintManager;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception v0

    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error creating printer discovery session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method private destroyNoCheck()V
    .registers 5

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_18
    .catchall {:try_start_4 .. :try_end_d} :catchall_16

    nop

    :goto_e
    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_22

    :catchall_16
    move-exception v1

    goto :goto_23

    :catch_18
    move-exception v1

    :try_start_19
    const-string v2, "PrinterDiscoverySession"

    const-string v3, "Error destroying printer discovery session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    nop

    goto :goto_e

    :goto_22
    return-void

    :goto_23
    iput-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    throw v1
.end method

.method private handlePrintersAdded(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_28

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    iget-object v3, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_28
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    return-void

    :cond_2c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_48

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_48
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    if-eqz v4, :cond_6b

    iget-object v5, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    goto :goto_52

    :cond_6c
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    return-void
.end method

.method private handlePrintersRemoved(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_21

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    iget-object v4, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_21
    if-eqz v0, :cond_26

    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    :cond_26
    return-void
.end method

.method private isDestroyedNoCheck()Z
    .registers 2

    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private notifyOnPrintersChanged()V
    .registers 2

    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;->onPrintersChanged()V

    :cond_7
    return-void
.end method

.method private static throwIfNotCalledOnMainThread()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Ignoring destroy - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    return-void
.end method

.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Destroying leaked printer discovery session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getPrinters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "PrinterDiscoverySession"

    const-string v1, "Ignoring get printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final isDestroyed()Z
    .registers 2

    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .registers 2

    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    return v0
.end method

.method public final setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V
    .registers 2

    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    return-void
.end method

.method public final startPrinterDiscovery(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    const-string v0, "Ignoring start printers discovery - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    :try_start_15
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, v2, p1, v3}, Landroid/print/IPrintManager;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    const-string v2, "Error starting printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public final startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    const-string v0, "Ignoring start printer state tracking - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, p1, v2}, Landroid/print/IPrintManager;->startPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v2, "Error starting printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public final stopPrinterDiscovery()V
    .registers 5

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    const-string v0, "Ignoring stop printers discovery - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    :try_start_15
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, v2, v3}, Landroid/print/IPrintManager;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    const-string v2, "Error stopping printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public final stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 5

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    const-string v0, "Ignoring stop printer state tracking - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, p1, v2}, Landroid/print/IPrintManager;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v2, "Error stopping printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public final validatePrinters(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    const-string v1, "PrinterDiscoverySession"

    if-eqz v0, :cond_e

    const-string v0, "Ignoring validate printers - session destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v0, p1, v2}, Landroid/print/IPrintManager;->validatePrinters(Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v2, "Error validating printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method
