# classes3.dex

.class public final Landroid/text/format/RelativeDateTimeFormatter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final DAY_IN_MS:I = 0x5265c00

.field private static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-direct {v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;-><init>()V

    sput-object v0, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dayDistance(Landroid/icu/util/TimeZone;JJ)I
    .registers 7

    invoke-static {p0, p3, p4}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v0

    invoke-static {p0, p1, p2}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    sget-object v1, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v1, v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RelativeDateTimeFormatter;

    if-nez v2, :cond_31

    const/4 v3, 0x0

    invoke-static {p0, v3, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    return-object v2
.end method

.method public static getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;
    .registers 37

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    if-eqz p0, :cond_be

    if-eqz p1, :cond_b5

    invoke-static/range {p0 .. p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v10

    sub-long v0, v13, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p8, v0

    if-lez v0, :cond_23

    const-wide/32 v0, 0x240c8400

    move-wide/from16 v18, v0

    goto :goto_25

    :cond_23
    move-wide/from16 v18, p8

    :goto_25
    const/high16 v0, 0xc0000

    and-int v0, p10, v0

    if-eqz v0, :cond_2f

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v9, v0

    goto :goto_32

    :cond_2f
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v9, v0

    :goto_32
    invoke-static {v10, v15, v11, v12}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v7

    invoke-static {v10, v15, v13, v14}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v20

    cmp-long v0, v16, v18

    const/4 v5, 0x1

    if-gez v0, :cond_77

    if-lez v20, :cond_56

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p6, v0

    if-gez v0, :cond_56

    const-wide/32 v0, 0x5265c00

    move-wide/from16 v21, v0

    goto :goto_58

    :cond_56
    move-wide/from16 v21, p6

    :goto_58
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-object v1, v15

    move-object v2, v10

    move-wide/from16 v3, p2

    move v11, v5

    move-wide/from16 v5, p4

    move-object v12, v7

    move-object/from16 v23, v8

    move-wide/from16 v7, v21

    move-object/from16 v24, v9

    move/from16 v9, p10

    move-object/from16 v25, v10

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    move/from16 v3, p10

    move-object v2, v0

    move-object/from16 v1, v23

    goto :goto_9b

    :cond_77
    move v11, v5

    move-object v12, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    invoke-virtual {v12, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v23

    invoke-virtual {v1, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_8f

    const v0, 0x20014

    goto :goto_92

    :cond_8f
    const v0, 0x10018

    :goto_92
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-static {v15, v12, v0, v2}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v21, p6

    move v3, v0

    :goto_9b
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {v15, v12, v11, v0}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    sget-object v6, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v6

    move-object/from16 v7, v24

    :try_start_a8
    invoke-static {v15, v7, v5}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_b2
    move-exception v0

    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_b2

    throw v0

    :cond_b5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p9

    sub-long v8, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v0, v5, v3

    const/4 v10, 0x1

    if-ltz v0, :cond_17

    move v0, v10

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v11, v0

    const/high16 v0, 0xc0000

    and-int v0, p8, v0

    if-eqz v0, :cond_23

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v12, v0

    goto :goto_26

    :cond_23
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v12, v0

    :goto_26
    if-eqz v11, :cond_2c

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-object v13, v0

    goto :goto_2f

    :cond_2c
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-object v13, v0

    :goto_2f
    const/4 v14, 0x1

    const/4 v15, 0x0

    const-wide/32 v16, 0xea60

    cmp-long v0, v8, v16

    if-gez v0, :cond_52

    cmp-long v0, p6, v16

    if-gez v0, :cond_52

    const-wide/16 v16, 0x3e8

    move-object/from16 v18, v13

    move/from16 v19, v14

    div-long v13, v8, v16

    long-to-int v0, v13

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move/from16 v16, v11

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    goto/16 :goto_126

    :cond_52
    move-object/from16 v18, v13

    move/from16 v19, v14

    const-wide/32 v13, 0x36ee80

    cmp-long v0, v8, v13

    if-gez v0, :cond_71

    cmp-long v0, p6, v13

    if-gez v0, :cond_71

    div-long v13, v8, v16

    long-to-int v0, v13

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move/from16 v16, v11

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    goto/16 :goto_126

    :cond_71
    const-wide/32 v16, 0x5265c00

    cmp-long v0, v8, v16

    if-gez v0, :cond_8c

    cmp-long v0, p6, v16

    if-gez v0, :cond_8c

    div-long v13, v8, v13

    long-to-int v0, v13

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move/from16 v16, v11

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    goto/16 :goto_126

    :cond_8c
    const-wide/32 v13, 0x240c8400

    cmp-long v0, v8, v13

    if-gez v0, :cond_114

    cmp-long v0, p6, v13

    if-gez v0, :cond_114

    invoke-static/range {p1 .. p5}, Landroid/text/format/RelativeDateTimeFormatter;->dayDistance(Landroid/icu/util/TimeZone;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v0, 0x2

    if-ne v13, v0, :cond_e9

    if-eqz v11, :cond_c8

    sget-object v10, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v10

    :try_start_a9
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_bf

    move/from16 v16, v11

    :try_start_af
    sget-object v11, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_bb

    move-object/from16 v17, v14

    :try_start_b3
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v11, v14}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v10

    goto :goto_dc

    :catchall_bb
    move-exception v0

    move-object/from16 v17, v14

    goto :goto_c4

    :catchall_bf
    move-exception v0

    move/from16 v16, v11

    move-object/from16 v17, v14

    :goto_c4
    monitor-exit v10
    :try_end_c5
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_c6

    throw v0

    :catchall_c6
    move-exception v0

    goto :goto_c4

    :cond_c8
    move/from16 v16, v11

    move-object/from16 v17, v14

    sget-object v11, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v11

    :try_start_cf
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v10, v14}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v11
    :try_end_dc
    .catchall {:try_start_cf .. :try_end_dc} :catchall_e6

    :goto_dc
    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e5

    return-object v0

    :cond_e5
    goto :goto_10c

    :catchall_e6
    move-exception v0

    :try_start_e7
    monitor-exit v11
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v0

    :cond_e9
    move/from16 v16, v11

    move-object/from16 v17, v14

    if-ne v13, v10, :cond_fc

    sget-object v15, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v14, 0x0

    move-object v10, v15

    move-object/from16 v11, v18

    move-object/from16 v23, v17

    move/from16 v17, v14

    move-object/from16 v14, v23

    goto :goto_126

    :cond_fc
    if-nez v13, :cond_10c

    sget-object v15, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v14, 0x0

    move-object v11, v0

    move-object v10, v15

    move-object/from16 v23, v17

    move/from16 v17, v14

    move-object/from16 v14, v23

    goto :goto_126

    :cond_10c
    :goto_10c
    move-object v10, v15

    move-object/from16 v14, v17

    move-object/from16 v11, v18

    move/from16 v17, v19

    goto :goto_126

    :cond_114
    move/from16 v16, v11

    cmp-long v0, p6, v13

    if-nez v0, :cond_148

    div-long v10, v8, v13

    long-to-int v0, v10

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    :goto_126
    sget-object v20, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v20

    nop

    :try_start_12a
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0
    :try_end_12e
    .catchall {:try_start_12a .. :try_end_12e} :catchall_141

    if-eqz v17, :cond_139

    move-wide/from16 v21, v8

    int-to-double v8, v13

    :try_start_133
    invoke-virtual {v0, v8, v9, v11, v14}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object v8

    monitor-exit v20

    return-object v8

    :cond_139
    move-wide/from16 v21, v8

    invoke-virtual {v0, v11, v10}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v8

    monitor-exit v20

    return-object v8

    :catchall_141
    move-exception v0

    move-wide/from16 v21, v8

    :goto_144
    monitor-exit v20
    :try_end_145
    .catchall {:try_start_133 .. :try_end_145} :catchall_146

    throw v0

    :catchall_146
    move-exception v0

    goto :goto_144

    :cond_148
    move-wide/from16 v21, v8

    invoke-static {v2, v1, v3, v4}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    and-int/lit8 v8, p8, 0xc

    if-nez v8, :cond_166

    invoke-static {v2, v1, v5, v6}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v8

    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v10

    if-eq v9, v10, :cond_163

    or-int/lit8 v9, p8, 0x4

    goto :goto_168

    :cond_163
    or-int/lit8 v9, p8, 0x8

    goto :goto_168

    :cond_166
    move/from16 v9, p8

    :goto_168
    invoke-static {v1, v0, v9, v7}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;
    .registers 20

    sget-object v10, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .registers 22

    if-eqz p0, :cond_25

    if-eqz p1, :cond_1c

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v10

    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v11

    move-object v0, v10

    move-object v1, v11

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static julianDay(Landroid/icu/util/TimeZone;J)I
    .registers 7

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x253d8c

    add-int/2addr v2, v3

    return v2
.end method
