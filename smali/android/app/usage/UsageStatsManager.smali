# classes.dex

.class public final Landroid/app/usage/UsageStatsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStatsManager$UsageSource;,
        Landroid/app/usage/UsageStatsManager$ForcedReasons;,
        Landroid/app/usage/UsageStatsManager$StandbyBuckets;
    }
.end annotation


# static fields
.field public static final EXTRA_OBSERVER_ID:Ljava/lang/String; = "android.app.usage.extra.OBSERVER_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_TIME_LIMIT:Ljava/lang/String; = "android.app.usage.extra.TIME_LIMIT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_TIME_USED:Ljava/lang/String; = "android.app.usage.extra.TIME_USED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INTERVAL_BEST:I = 0x4

.field public static final INTERVAL_COUNT:I = 0x4

.field public static final INTERVAL_DAILY:I = 0x0

.field public static final INTERVAL_MONTHLY:I = 0x2

.field public static final INTERVAL_WEEKLY:I = 0x1

.field public static final INTERVAL_YEARLY:I = 0x3

.field public static final REASON_MAIN_DEFAULT:I = 0x100

.field public static final REASON_MAIN_FORCED_BY_SYSTEM:I = 0x600

.field public static final REASON_MAIN_FORCED_BY_USER:I = 0x400

.field public static final REASON_MAIN_MASK:I = 0xff00

.field public static final REASON_MAIN_PREDICTED:I = 0x500

.field public static final REASON_MAIN_TIMEOUT:I = 0x200

.field public static final REASON_MAIN_USAGE:I = 0x300

.field public static final REASON_SUB_DEFAULT_APP_UPDATE:I = 0x1

.field public static final REASON_SUB_DEFAULT_UNDEFINED:I = 0x0

.field public static final REASON_SUB_FORCED_SYSTEM_FLAG_ABUSE:I = 0x2

.field public static final REASON_SUB_FORCED_SYSTEM_FLAG_BACKGROUND_RESOURCE_USAGE:I = 0x1

.field public static final REASON_SUB_FORCED_SYSTEM_FLAG_BUGGY:I = 0x4

.field public static final REASON_SUB_FORCED_SYSTEM_FLAG_UNDEFINED:I = 0x0

.field public static final REASON_SUB_FORCED_USER_FLAG_INTERACTION:I = 0x2

.field public static final REASON_SUB_MASK:I = 0xff

.field public static final REASON_SUB_PREDICTED_RESTORED:I = 0x1

.field public static final REASON_SUB_USAGE_ACTIVE_TIMEOUT:I = 0x7

.field public static final REASON_SUB_USAGE_EXEMPTED_SYNC_SCHEDULED_DOZE:I = 0xc

.field public static final REASON_SUB_USAGE_EXEMPTED_SYNC_SCHEDULED_NON_DOZE:I = 0xb

.field public static final REASON_SUB_USAGE_EXEMPTED_SYNC_START:I = 0xd

.field public static final REASON_SUB_USAGE_FOREGROUND_SERVICE_START:I = 0xf

.field public static final REASON_SUB_USAGE_MOVE_TO_BACKGROUND:I = 0x5

.field public static final REASON_SUB_USAGE_MOVE_TO_FOREGROUND:I = 0x4

.field public static final REASON_SUB_USAGE_NOTIFICATION_SEEN:I = 0x2

.field public static final REASON_SUB_USAGE_SLICE_PINNED:I = 0x9

.field public static final REASON_SUB_USAGE_SLICE_PINNED_PRIV:I = 0xa

.field public static final REASON_SUB_USAGE_SYNC_ADAPTER:I = 0x8

.field public static final REASON_SUB_USAGE_SYSTEM_INTERACTION:I = 0x1

.field public static final REASON_SUB_USAGE_SYSTEM_UPDATE:I = 0x6

.field public static final REASON_SUB_USAGE_UNEXEMPTED_SYNC_SCHEDULED:I = 0xe

.field public static final REASON_SUB_USAGE_USER_INTERACTION:I = 0x3

.field public static final STANDBY_BUCKET_ACTIVE:I = 0xa

.field public static final STANDBY_BUCKET_EXEMPTED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STANDBY_BUCKET_FREQUENT:I = 0x1e

.field public static final STANDBY_BUCKET_NEVER:I = 0x32
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STANDBY_BUCKET_RARE:I = 0x28

.field public static final STANDBY_BUCKET_RESTRICTED:I = 0x2d

.field public static final STANDBY_BUCKET_WORKING_SET:I = 0x14

.field public static final USAGE_SOURCE_CURRENT_ACTIVITY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USAGE_SOURCE_TASK_ROOT_ACTIVITY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final sEmptyResults:Landroid/app/usage/UsageEvents;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/usage/IUsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .registers 5

    and-int/lit16 v0, p0, 0xff

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0xff00

    and-int/2addr v2, p0

    const-string v3, "-"

    sparse-switch v2, :sswitch_data_d2

    goto/16 :goto_cc

    :sswitch_12
    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_cc

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    :sswitch_27
    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v0, :pswitch_data_ec

    goto :goto_36

    :pswitch_31  #0x1
    const-string v2, "-r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    goto/16 :goto_cc

    :sswitch_38
    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_cc

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    :sswitch_4c
    const-string/jumbo v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v0, :pswitch_data_f2

    goto/16 :goto_cc

    :pswitch_57  #0xf
    const-string v2, "-fss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    :pswitch_5e  #0xe
    const-string v2, "-uss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    :pswitch_65  #0xd
    const-string v2, "-es"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cc

    :pswitch_6c  #0xc
    const-string v2, "-ed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_72  #0xb
    const-string v2, "-en"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_78  #0xa
    const-string v2, "-lv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_7e  #0x9
    const-string v2, "-lp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_84  #0x8
    const-string v2, "-sa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_8a  #0x7
    const-string v2, "-at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_90  #0x6
    const-string v2, "-su"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_96  #0x5
    const-string v2, "-mb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_9c  #0x4
    const-string v2, "-mf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_a2  #0x3
    const-string v2, "-ui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_a8  #0x2
    const-string v2, "-ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :pswitch_ae  #0x1
    const-string v2, "-si"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :sswitch_b4
    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :sswitch_bb
    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch v0, :pswitch_data_114

    goto :goto_cb

    :pswitch_c4  #0x1
    const-string v2, "-au"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    :pswitch_ca  #0x0
    nop

    :goto_cb
    nop

    :cond_cc
    :goto_cc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_d2
    .sparse-switch
        0x100 -> :sswitch_bb
        0x200 -> :sswitch_b4
        0x300 -> :sswitch_4c
        0x400 -> :sswitch_38
        0x500 -> :sswitch_27
        0x600 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_31  #00000001
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_ae  #00000001
        :pswitch_a8  #00000002
        :pswitch_a2  #00000003
        :pswitch_9c  #00000004
        :pswitch_96  #00000005
        :pswitch_90  #00000006
        :pswitch_8a  #00000007
        :pswitch_84  #00000008
        :pswitch_7e  #00000009
        :pswitch_78  #0000000a
        :pswitch_72  #0000000b
        :pswitch_6c  #0000000c
        :pswitch_65  #0000000d
        :pswitch_5e  #0000000e
        :pswitch_57  #0000000f
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_ca  #00000000
        :pswitch_c4  #00000001
    .end packed-switch
.end method

.method public static standbyBucketToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string v0, "NEVER"

    return-object v0

    :sswitch_b
    const-string v0, "RESTRICTED"

    return-object v0

    :sswitch_e
    const-string v0, "RARE"

    return-object v0

    :sswitch_11
    const-string v0, "FREQUENT"

    return-object v0

    :sswitch_14
    const-string v0, "WORKING_SET"

    return-object v0

    :sswitch_17
    const-string v0, "ACTIVE"

    return-object v0

    :sswitch_1a
    const-string v0, "EXEMPTED"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x5 -> :sswitch_1a
        0xa -> :sswitch_17
        0x14 -> :sswitch_14
        0x1e -> :sswitch_11
        0x28 -> :sswitch_e
        0x2d -> :sswitch_b
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public static usageSourceToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1a  #0x2
    const-string v0, "CURRENT_ACTIVITY"

    return-object v0

    :pswitch_1d  #0x1
    const-string v0, "TASK_ROOT_ACTIVITY"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
    .end packed-switch
.end method


# virtual methods
.method public clearBroadcastEvents()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager;->clearBroadcastEvents(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearBroadcastResponseStats(Ljava/lang/String;J)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceUsageSourceSettingRead()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->forceUsageSourceSettingRead()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyBucket()I
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return v0

    :catch_19
    move-exception v0

    const/16 v0, 0xa

    return v0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const/16 v0, 0xa

    return v0
.end method

.method public getAppStandbyBuckets()Ljava/util/Map;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_37

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/AppStandbyInfo;

    iget-object v6, v5, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v7, v5, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_38

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_37
    return-object v2

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastTimeAnyComponentUsed(Ljava/lang/String;)J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsageSource()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->getUsageSource()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAppInactive(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0}, Landroid/app/usage/IUsageStatsManager;->onCarrierPrivilegedAppsChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryAndAggregateUsageStats(JJ)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_13
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_3d

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    if-nez v5, :cond_37

    iget-object v6, v4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_37
    invoke-virtual {v5, v4}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3d
    return-object v1
.end method

.method public queryBroadcastResponseStats(Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/BroadcastResponseStatsList;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryConfigurations(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return-object v1

    :cond_16
    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return-object v1

    :cond_16
    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .registers 11

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    sget-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object v0
.end method

.method public queryEventsForSelf(JJ)Landroid/app/usage/UsageEvents;
    .registers 11

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    sget-object v0, Landroid/app/usage/UsageStatsManager;->sEmptyResults:Landroid/app/usage/UsageEvents;

    return-object v0
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryUsageStats... for MIUIROM-451329begin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v10, p2

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v12, p4

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v14, 0x80000

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_2a
    iget-object v2, v1, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v0, v1, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/usage/IUsageStatsManager;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_48} :catch_4a

    return-object v2

    :cond_49
    goto :goto_4b

    :catch_4a
    move-exception v0

    :goto_4b
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryUsageStatsAsUser(IJJI)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJI)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryUsageStatsAsUser(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    :cond_17
    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;Ljava/time/Duration;Ljava/time/Duration;Landroid/app/PendingIntent;)V
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    move v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-interface/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    nop

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/PendingIntent;)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-object v2, p2

    move-object v5, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;Ljava/time/Duration;Ljava/time/Duration;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    invoke-virtual/range {p4 .. p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v7

    iget-object v0, v1, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    move v3, p1

    move-object v4, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v11}, Landroid/app/usage/IUsageStatsManager;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1c

    nop

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public reportUsageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    nop

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportUsageStart(Landroid/app/Activity;Ljava/lang/String;J)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportUsageStop(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Landroid/app/usage/IUsageStatsManager;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    nop

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportUserInteraction(Ljava/lang/String;I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    invoke-interface {v0, p1, p2}, Landroid/app/usage/IUsageStatsManager;->reportUserInteraction(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppInactive(Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppStandbyBuckets(Ljava/util/Map;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_39
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :try_start_3e
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4b

    nop

    return-void

    :catch_4b
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setEstimatedLaunchTimeMillis(Ljava/lang/String;J)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_23

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1b

    :try_start_8
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/usage/IUsageStatsManager;->setEstimatedLaunchTime(Ljava/lang/String;JI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "estimated launch time must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "package name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEstimatedLaunchTimesMillis(Ljava/util/Map;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6f

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_46

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_46

    new-instance v5, Landroid/app/usage/AppLaunchEstimateInfo;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v3, v6, v7}, Landroid/app/usage/AppLaunchEstimateInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "estimated launch time must be positive"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "package name cannot be null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :try_start_5c
    iget-object v2, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v3, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/app/usage/IUsageStatsManager;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_67} :catch_69

    nop

    return-void

    :catch_69
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "estimatedLaunchTimesMillis cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAppUsageLimitObserver(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterAppUsageObserver(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterAppUsageObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterUsageSessionObserver(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mService:Landroid/app/usage/IUsageStatsManager;

    iget-object v1, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageSessionObserver(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JLandroid/os/UserHandle;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageStatsManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerWhitelistManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerWhitelistManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarily(Ljava/lang/String;J)V

    return-void
.end method
