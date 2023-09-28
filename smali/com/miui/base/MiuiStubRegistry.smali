# classes4.dex

.class public Lcom/miui/base/MiuiStubRegistry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;,
        Lcom/miui/base/MiuiStubRegistry$ImplProvider;
    }
.end annotation


# static fields
.field private static DEBUG_UNKNOWN_IMPL:Z = false

.field private static final MANIFEST:Ljava/lang/String; = "com.miui.base.MiuiStubImplManifest$$"

.field private static final TAG:Ljava/lang/String; = "MiuiStubRegistry"

.field private static sExtClassLoaderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sExtManifestStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static volatile sManifestStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sRegisteredStubs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sStubHeadLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/base/MiuiStubRegistry;->DEBUG_UNKNOWN_IMPL:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sStubHeadLoaded:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.miui.base.MiuiStubImplManifest$$"

    invoke-static {v0, v1}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRegisteredImpls()V
    .registers 3

    const-string v0, "MiuiStubRegistry"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "clearRegisteredImpls"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static declared-synchronized collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 6

    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p1, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;

    invoke-interface {v3, v2}, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;->collectImplProviders(Ljava/util/Map;)V

    sget-object v3, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    invoke-static {v3, v2}, Lcom/miui/base/MiuiStubRegistry;->updateManifest(Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_21
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception p0

    goto :goto_2b

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "MiuiStubRegistry"

    const-string v3, "Failed to collect stub providers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    :goto_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 16

    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {p0, p2}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_8b
    .catchall {:try_start_3 .. :try_end_c} :catchall_89

    monitor-exit v0

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_1f

    move-object v1, p0

    check-cast v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, p1}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    goto :goto_3d

    :cond_1f
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, p1}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    goto :goto_3d

    :cond_33
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-direct {v1, p1, p0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object v2, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v3, v4, v1}, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;->collectImplProvidersClass(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    invoke-virtual {v5, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_5d

    :cond_80
    sget-object v6, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    invoke-static {v6, v5}, Lcom/miui/base/MiuiStubRegistry;->updateManifest(Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/util/HashMap;

    move-result-object v6

    sput-object v6, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_88} :catch_8b
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    goto :goto_93

    :catchall_89
    move-exception p0

    goto :goto_95

    :catch_8b
    move-exception v1

    :try_start_8c
    const-string v2, "MiuiStubRegistry"

    const-string v3, "Failed to collect stub providers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_89

    :goto_93
    monitor-exit v0

    return-void

    :goto_95
    monitor-exit v0

    throw p0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/base/MiuiStubRegistry;->get(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    sget-object v0, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_15

    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideSingleton()Ljava/lang/Object;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideNewInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_19
    return-object v1

    :cond_1a
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    if-eqz v0, :cond_35

    if-eqz p1, :cond_30

    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideSingleton()Ljava/lang/Object;

    move-result-object v1

    goto :goto_34

    :cond_30
    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideNewInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_34
    return-object v1

    :cond_35
    sget-boolean v1, Lcom/miui/base/MiuiStubRegistry;->DEBUG_UNKNOWN_IMPL:Z

    if-eqz v1, :cond_5b

    const-string v1, "MiuiStubRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find implementation for base class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in manifest stubs, try registered stubs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_5e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    move-object v0, v2

    if-nez v0, :cond_6e

    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    :cond_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_7b

    if-eqz p1, :cond_76

    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideSingleton()Ljava/lang/Object;

    move-result-object v1

    goto :goto_7a

    :cond_76
    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideNewInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_7a
    return-object v1

    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method private static getClassPath(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/miui/base/annotations/MiuiStubHead;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/base/annotations/MiuiStubHead;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/miui/base/annotations/MiuiStubHead;->classPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t annotated with @MiuiStubHead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getExtManifestStubNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getInternalFlag(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/miui/base/annotations/MiuiStubHead;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/base/annotations/MiuiStubHead;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/miui/base/annotations/MiuiStubHead;->internal()Z

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t annotated with @MiuiStubHead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getManifest(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/miui/base/annotations/MiuiStubHead;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/base/annotations/MiuiStubHead;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/miui/base/annotations/MiuiStubHead;->manifestName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t annotated with @MiuiStubHead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getManifestStubNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static declared-synchronized init(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sStubHeadLoaded:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v1, "MiuiStubRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already collected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_76

    monitor-exit v0

    return-void

    :cond_29
    :try_start_29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_47

    const-string/jumbo v2, "ro.miui.ui.version.code"

    const-string v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    move v2, v3

    goto :goto_48

    :cond_47
    move v2, v4

    :goto_48
    sput-boolean v2, Lcom/miui/base/MiuiStubRegistry;->DEBUG_UNKNOWN_IMPL:Z

    invoke-static {p0}, Lcom/miui/base/MiuiStubRegistry;->getClassPath(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_56

    :cond_55
    move v3, v4

    :goto_56
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0}, Lcom/miui/base/MiuiStubRegistry;->getManifest(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/base/MiuiStubRegistry;->getInternalFlag(Ljava/lang/Class;)Z

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6d

    invoke-static {v1, v4}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_29 .. :try_end_6b} :catchall_76

    monitor-exit v0

    return-void

    :cond_6d
    :try_start_6d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v2, v4, v3, v6}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_76

    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static registerSingleton(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:TP;>(",
            "Ljava/lang/Class<",
            "TP;>;TQ;)V"
        }
    .end annotation

    sget-object v0, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/base/MiuiStubRegistry$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/base/MiuiStubRegistry$1;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_32

    if-eqz v1, :cond_31

    const-string v0, "MiuiStubRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was previously registered with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private static updateManifest(Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_4c

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    if-eqz v3, :cond_49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was previously registered with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiStubRegistry"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_4c
    return-object v0
.end method
