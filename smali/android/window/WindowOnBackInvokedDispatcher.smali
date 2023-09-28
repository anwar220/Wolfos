# classes4.dex

.class public Landroid/window/WindowOnBackInvokedDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowOnBackInvokedDispatcher$Checker;,
        Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
    }
.end annotation


# static fields
.field private static final ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

.field private static final ENABLE_PREDICTIVE_BACK:Z

.field private static final TAG:Ljava/lang/String; = "WindowOnBackDispatcher"


# instance fields
.field private final mAllCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final mOnBackInvokedCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWindow:Landroid/view/IWindow;

.field private mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    nop

    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    nop

    const-string/jumbo v0, "persist.wm.debug.predictive_back_always_enforce"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    sput-boolean v1, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Z)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    return-void
.end method

.method public static isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z
    .registers 6

    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    if-eqz v0, :cond_1c

    if-nez v3, :cond_1b

    sget-boolean v4, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    if-eqz v4, :cond_1c

    :cond_1b
    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method private setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    if-nez v0, :cond_9

    goto :goto_52

    :cond_9
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    :try_start_c
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    instance-of v2, p1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz v2, :cond_24

    move-object v2, p1

    check-cast v2, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    invoke-virtual {v2}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;->getIOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    goto :goto_29

    :cond_24
    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    invoke-direct {v2, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;)V

    :goto_29
    nop

    new-instance v3, Landroid/window/OnBackInvokedCallbackInfo;

    invoke-direct {v3, v2, v1}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;I)V

    move-object v0, v3

    :cond_30
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_51

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set OnBackInvokedCallback to WM. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void

    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method public attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;)V
    .registers 4

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_13
    return-void
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    :cond_a
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_15
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public detachFromWindow()V
    .registers 2

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    return-void
.end method

.method public getChecker()Landroid/window/WindowOnBackInvokedDispatcher$Checker;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    return-object v0
.end method

.method public getTopCallback()Landroid/window/OnBackInvokedCallback;
    .registers 6

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    return-object v0

    :cond_3b
    goto :goto_14

    :cond_3c
    return-object v1
.end method

.method public registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    :cond_b
    return-void
.end method

.method public registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .registers 7

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void

    :cond_8
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_49
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6b

    if-eq v1, p1, :cond_6e

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p2, :cond_6e

    :cond_6b
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_6e
    return-void
.end method

.method public registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    return-void
.end method

.method public setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .registers 2

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-void
.end method

.method public unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void

    :cond_8
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v0, p1, :cond_41

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_41
    return-void
.end method
