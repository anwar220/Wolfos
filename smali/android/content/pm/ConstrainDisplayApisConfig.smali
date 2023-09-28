# classes.dex

.class public final Landroid/content/pm/ConstrainDisplayApisConfig;
.super Ljava/lang/Object;


# static fields
.field private static final FLAG_ALWAYS_CONSTRAIN_DISPLAY_APIS:Ljava/lang/String; = "always_constrain_display_apis"

.field private static final FLAG_NEVER_CONSTRAIN_DISPLAY_APIS:Ljava/lang/String; = "never_constrain_display_apis"

.field private static final FLAG_NEVER_CONSTRAIN_DISPLAY_APIS_ALL_PACKAGES:Ljava/lang/String; = "never_constrain_display_apis_all_packages"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlwaysConstrainConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeverConstrainConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeverConstrainDisplayApisAllPackages:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ConstrainDisplayApisConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/content/pm/ConstrainDisplayApisConfig;->updateCache()V

    nop

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ConstrainDisplayApisConfig;)V

    const-string v2, "constrain_display_apis"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private static buildConfigMap(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v1

    :cond_d
    const-string v0, ","

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v4, :cond_ac

    aget-object v7, v3, v6

    const-string v0, ":"

    const/4 v8, 0x3

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v8, :cond_46

    sget-object v0, Landroid/content/pm/ConstrainDisplayApisConfig;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid package entry in flag \'never/always_constrain_display_apis\': "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :cond_46
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    :try_start_5d
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_6a

    :cond_66
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_6a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    const-wide v14, 0x7fffffffffffffffL

    goto :goto_7a

    :cond_76
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_7a
    new-instance v0, Landroid/util/Pair;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_8a} :catch_8c

    nop

    goto :goto_a5

    :catch_8c
    move-exception v0

    sget-object v2, Landroid/content/pm/ConstrainDisplayApisConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid APK version code in package entry: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a5
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_18

    :cond_ac
    return-object v1
.end method

.method private static flagHasMatchingPackageEntry(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Landroid/content/pm/ApplicationInfo;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->matchesApplicationInfo(Landroid/util/Pair;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private static matchesApplicationInfo(Landroid/util/Pair;Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            ")Z"
        }
    .end annotation

    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private updateCache()V
    .registers 5

    const-string v0, "constrain_display_apis"

    const-string/jumbo v1, "never_constrain_display_apis_all_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainDisplayApisAllPackages:Z

    const-string/jumbo v1, "never_constrain_display_apis"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ConstrainDisplayApisConfig;->buildConfigMap(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainConfigMap:Landroid/util/ArrayMap;

    const-string v3, "always_constrain_display_apis"

    invoke-static {v0, v3, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->buildConfigMap(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mAlwaysConstrainConfigMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public getAlwaysConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mAlwaysConstrainConfigMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->flagHasMatchingPackageEntry(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public getNeverConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    iget-boolean v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainDisplayApisAllPackages:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainConfigMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->flagHasMatchingPackageEntry(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$android-content-pm-ConstrainDisplayApisConfig(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/ConstrainDisplayApisConfig;->updateCache()V

    return-void
.end method
