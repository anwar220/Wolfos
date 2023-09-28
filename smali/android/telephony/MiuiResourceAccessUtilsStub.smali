# classes3.dex

.class public Landroid/telephony/MiuiResourceAccessUtilsStub;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT_REQUEST_ACTIVITY_INFO:Ljava/lang/String; = "event_request_activity_info"

.field public static final EVENT_REQUEST_CELL_INFO_LIST:Ljava/lang/String; = "event_request_cell_info_list"

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiResourceAccessUtilsStub"

.field private static volatile sInstance:Landroid/telephony/IMiuiResourceAccessUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "android.telephony.MiuiResourceAccessUtilsImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IMiuiResourceAccessUtils;

    sput-object v1, Landroid/telephony/MiuiResourceAccessUtilsStub;->sInstance:Landroid/telephony/IMiuiResourceAccessUtils;

    const-string v1, "create MiuiResourceAccessUtilsImpl"

    invoke-static {v1}, Landroid/telephony/MiuiResourceAccessUtilsStub;->logi(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_20
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_15} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_25

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_24

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_24
    :goto_24
    nop

    :goto_25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiResourceAccessUtilsStub"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendResourceAccessBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Landroid/telephony/MiuiResourceAccessUtilsStub;->sInstance:Landroid/telephony/IMiuiResourceAccessUtils;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/MiuiResourceAccessUtilsStub;->sInstance:Landroid/telephony/IMiuiResourceAccessUtils;

    invoke-interface {v0, p0, p1, p2}, Landroid/telephony/IMiuiResourceAccessUtils;->sendResourceAccessBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
