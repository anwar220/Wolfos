# classes3.dex

.class public final Landroid/text/format/DateIntervalFormat;
.super Ljava/lang/Object;


# static fields
.field private static final CACHED_FORMATTERS:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .registers 16

    and-int/lit16 v0, p4, 0x2000

    if-eqz v0, :cond_6

    const-string p5, "UTC"

    :cond_6
    if-eqz p5, :cond_d

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v8

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v9

    move-object v1, v9

    move-object v2, v8

    move-wide v3, p0

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateIntervalFormat;->formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;
    .registers 15

    invoke-static {p1, p0, p2, p3}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    cmp-long v1, p2, p4

    if-nez v1, :cond_a

    move-object v1, v0

    goto :goto_e

    :cond_a
    invoke-static {p1, p0, p4, p5}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v1

    :goto_e
    invoke-static {v1}, Landroid/text/format/DateIntervalFormat;->isExactlyMidnight(Landroid/icu/util/Calendar;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    and-int/lit8 v2, p6, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    invoke-static {v0, v1}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v5

    if-ne v5, v4, :cond_24

    goto :goto_25

    :cond_24
    move v4, v3

    :goto_25
    if-nez v2, :cond_2b

    cmp-long v5, p2, p4

    if-nez v5, :cond_33

    :cond_2b
    if-eqz v4, :cond_38

    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_38

    :cond_33
    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/icu/util/Calendar;->add(II)V

    :cond_38
    invoke-static {v0, v1, p6}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    monitor-enter v4

    nop

    :try_start_40
    invoke-static {v2, p0, p1}, Landroid/text/format/DateIntervalFormat;->getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catchall_58
    move-exception v3

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private static getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateIntervalFormat;

    if-eqz v2, :cond_2a

    return-object v2

    :cond_2a
    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/icu/text/DateIntervalFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private static isExactlyMidnight(Landroid/icu/util/Calendar;)Z
    .registers 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method
