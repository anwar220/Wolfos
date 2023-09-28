# classes4.dex

.class Lcom/android/internal/org/bouncycastle/asn1/DateUtil;
.super Ljava/lang/Object;


# static fields
.field static EN_Locale:Ljava/util/Locale;

.field private static ZERO:Ljava/lang/Long;

.field private static final localeCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->localeCache:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->forEN()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->EN_Locale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static epochAdjust(Ljava/util/Date;)Ljava/util/Date;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->localeCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_36

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmssz"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "19700101000000GMT+00:00"

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2e

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    move-object v2, v6

    goto :goto_33

    :cond_2e
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v6

    :goto_33
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    if-eq v2, v3, :cond_4a

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    monitor-exit v1

    return-object v3

    :cond_4a
    monitor-exit v1

    return-object p0

    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method private static forEN()Ljava/util/Locale;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1a
    array-length v3, v0

    if-eq v2, v3, :cond_2f

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    aget-object v1, v0, v2

    return-object v1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static longValueOf(J)Ljava/lang/Long;
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
