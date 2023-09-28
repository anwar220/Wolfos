# classes3.dex

.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private static sLocale:Ljava/util/Locale;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    :cond_14
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104093b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    const v3, 0x10405fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    const v3, 0x104030c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    :cond_41
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    sget-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_6 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private static append2DigitNumber(Ljava/lang/StringBuilder;I)V
    .registers 3

    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static brokenIsLower(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static brokenIsUpper(C)Z
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static brokenToLower(C)C
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_e

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_e

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    :cond_e
    return p0
.end method

.method private static brokenToUpper(C)C
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    :cond_e
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V
    .registers 9

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_34

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1b

    invoke-direct {p0, v0, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v1

    :cond_1b
    if-eqz v1, :cond_2a

    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    :cond_34
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sparse-switch p0, :sswitch_data_8

    return-object p1

    :sswitch_4
    return-object p2

    :sswitch_5
    return-object p4

    :sswitch_6
    return-object p3

    nop

    :sswitch_data_8
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method private handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3c7

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    const-string v7, "?"

    const/4 v8, 0x7

    const/16 v9, 0xc

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    const/4 v13, 0x0

    packed-switch v5, :pswitch_data_3ca

    :pswitch_2f  #0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2c, 0x2e, 0x2f, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x4a, 0x4b, 0x4c, 0x4e, 0x51, 0x5b, 0x5c, 0x5d, 0x60, 0x66, 0x69, 0x6f, 0x71
    const/4 v1, 0x1

    return v1

    :pswitch_31  #0x7a
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-gez v7, :cond_38

    return v13

    :cond_38
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v7

    if-gez v7, :cond_42

    const/16 v8, 0x2d

    neg-int v7, v7

    goto :goto_44

    :cond_42
    const/16 v8, 0x2b

    :goto_44
    iget-object v9, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v7, v7, 0x3c

    div-int/lit8 v9, v7, 0x3c

    mul-int/lit8 v9, v9, 0x64

    rem-int/lit8 v10, v7, 0x3c

    add-int/2addr v9, v10

    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v10, "%04d"

    const-string v12, "%4d"

    invoke-static {v4, v10, v12, v11, v10}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v13

    invoke-virtual {v7, v10, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_68  #0x79
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v13, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v13

    :pswitch_70  #0x78
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_76  #0x77
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-virtual {v7, v11, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_88  #0x76
    const-string v6, "%e-%b-%Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_8e  #0x75
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v7

    if-nez v7, :cond_95

    goto :goto_99

    :cond_95
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    :goto_99
    move v7, v8

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v8, v11, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_a8  #0x74
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v13

    :pswitch_b0  #0x73
    invoke-virtual/range {p2 .. p3}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v6

    iget-object v7, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v13

    :pswitch_be  #0x72
    const-string v6, "%I:%M:%S %p"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_c4  #0x70
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_d3

    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_db

    :cond_d3
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    :goto_db
    invoke-direct {v0, v6, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v13

    :pswitch_df  #0x6e
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v13

    :pswitch_e7  #0x6d
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v13

    invoke-virtual {v7, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_fe  #0x6c
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/2addr v7, v9

    if-eqz v7, :cond_10b

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/lit8 v9, v7, 0xc

    :cond_10b
    move v7, v9

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_11e  #0x6b
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_134  #0x6a
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%03d"

    const-string v10, "%3d"

    invoke-static {v4, v9, v10, v11, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_14f  #0x65
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_165  #0x64
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_17b  #0x63
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_181  #0x62, 0x68
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_19b

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_18e

    goto :goto_19b

    :cond_18e
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_19c

    :cond_19b
    :goto_19b
    nop

    :goto_19c
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v13

    :pswitch_1a0  #0x61
    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-ltz v9, :cond_1bc

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-lt v9, v8, :cond_1ae

    goto :goto_1bc

    :cond_1ae
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    goto :goto_1bd

    :cond_1bc
    :goto_1bc
    nop

    :goto_1bd
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v13

    :pswitch_1c1  #0x5a
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-gez v7, :cond_1c8

    return v13

    :cond_1c8
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-eqz v7, :cond_1cf

    goto :goto_1d0

    :cond_1cf
    move v6, v13

    :goto_1d0
    invoke-virtual/range {p3 .. p3}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7, v6, v13}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v13

    :pswitch_1e0  #0x59
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v6, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v13

    :pswitch_1e8  #0x58
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_1ee  #0x57
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-eqz v9, :cond_1ff

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_200

    :cond_1ff
    const/4 v9, 0x6

    :goto_200
    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_214  #0x55
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v13

    invoke-virtual {v7, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_231  #0x54
    const-string v6, "%H:%M:%S"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_237  #0x53
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_24d  #0x52
    const-string v6, "%H:%M"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v13

    :pswitch_253  #0x50
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_262

    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_26a

    :cond_262
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    :goto_26a
    nop

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v13

    :pswitch_270  #0x4d
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_286  #0x49
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/2addr v7, v9

    if-eqz v7, :cond_293

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    rem-int/lit8 v9, v7, 0xc

    :cond_293
    move v7, v9

    iget-object v8, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v13

    invoke-virtual {v8, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_2a6  #0x48
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v13

    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v13

    :pswitch_2bc  #0x47, 0x56, 0x67
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v14

    :goto_2c8
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v15

    const/16 v16, 0x16e

    const/16 v17, 0x16d

    if-eqz v15, :cond_2d5

    move/from16 v15, v16

    goto :goto_2d7

    :cond_2d5
    move/from16 v15, v17

    :goto_2d7
    add-int/lit8 v18, v9, 0xb

    sub-int v18, v18, v14

    rem-int/lit8 v18, v18, 0x7

    add-int/lit8 v13, v18, -0x3

    rem-int/lit8 v18, v15, 0x7

    sub-int v6, v13, v18

    const/4 v8, -0x3

    if-ge v6, v8, :cond_2e8

    add-int/lit8 v6, v6, 0x7

    :cond_2e8
    add-int/2addr v6, v15

    if-lt v9, v6, :cond_2f0

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    const/4 v1, 0x1

    goto :goto_2fb

    :cond_2f0
    if-lt v9, v13, :cond_31f

    sub-int v8, v9, v13

    const/16 v16, 0x7

    div-int/lit8 v8, v8, 0x7

    const/4 v1, 0x1

    add-int/2addr v8, v1

    nop

    :goto_2fb
    const/16 v6, 0x56

    if-ne v5, v6, :cond_312

    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v1, v12

    invoke-virtual {v6, v10, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_31e

    :cond_312
    const/4 v12, 0x0

    const/16 v6, 0x67

    if-ne v5, v6, :cond_31b

    invoke-direct {v0, v7, v12, v1, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_31e

    :cond_31b
    invoke-direct {v0, v7, v1, v1, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    :goto_31e
    return v12

    :cond_31f
    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v1

    if-eqz v1, :cond_328

    goto :goto_32a

    :cond_328
    move/from16 v16, v17

    :goto_32a
    add-int v9, v9, v16

    move-object/from16 v1, p1

    const/4 v6, 0x1

    const/4 v8, 0x7

    const/4 v13, 0x0

    goto :goto_2c8

    :pswitch_332  #0x46
    const-string v1, "%Y-%m-%d"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    const/4 v1, 0x0

    return v1

    :pswitch_339  #0x45, 0x4f
    move-object/from16 v1, p1

    goto/16 :goto_9

    :pswitch_33d  #0x44
    move v1, v13

    const-string v6, "%m/%d/%y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v1

    :pswitch_344  #0x43
    move v1, v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7, v1, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v1

    :pswitch_34e  #0x42
    const/16 v1, 0x2d

    if-ne v4, v1, :cond_373

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_36e

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v9, :cond_360

    goto :goto_36e

    :cond_360
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v6}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    aget-object v7, v1, v6

    goto :goto_36f

    :cond_36e
    :goto_36e
    nop

    :goto_36f
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_394

    :cond_373
    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_390

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v9, :cond_381

    goto :goto_390

    :cond_381
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    aget-object v7, v1, v6

    goto :goto_391

    :cond_390
    :goto_390
    nop

    :goto_391
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    :goto_394
    const/4 v1, 0x0

    return v1

    :pswitch_396  #0x41
    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-ltz v1, :cond_3b5

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    const/4 v6, 0x7

    if-lt v1, v6, :cond_3a5

    goto :goto_3b5

    :cond_3a5
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v7

    add-int/2addr v7, v6

    aget-object v7, v1, v7

    goto :goto_3b6

    :cond_3b5
    :goto_3b5
    nop

    :goto_3b6
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    return v1

    :pswitch_3bb  #0x2b
    move v1, v13

    const-string v6, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v1

    :pswitch_3c2  #0x23, 0x2d, 0x30, 0x5e, 0x5f
    move v4, v5

    move-object/from16 v1, p1

    goto/16 :goto_9

    :cond_3c7
    move v1, v6

    return v1

    nop

    :pswitch_data_3ca
    .packed-switch 0x23
        :pswitch_3c2  #00000023
        :pswitch_2f  #00000024
        :pswitch_2f  #00000025
        :pswitch_2f  #00000026
        :pswitch_2f  #00000027
        :pswitch_2f  #00000028
        :pswitch_2f  #00000029
        :pswitch_2f  #0000002a
        :pswitch_3bb  #0000002b
        :pswitch_2f  #0000002c
        :pswitch_3c2  #0000002d
        :pswitch_2f  #0000002e
        :pswitch_2f  #0000002f
        :pswitch_3c2  #00000030
        :pswitch_2f  #00000031
        :pswitch_2f  #00000032
        :pswitch_2f  #00000033
        :pswitch_2f  #00000034
        :pswitch_2f  #00000035
        :pswitch_2f  #00000036
        :pswitch_2f  #00000037
        :pswitch_2f  #00000038
        :pswitch_2f  #00000039
        :pswitch_2f  #0000003a
        :pswitch_2f  #0000003b
        :pswitch_2f  #0000003c
        :pswitch_2f  #0000003d
        :pswitch_2f  #0000003e
        :pswitch_2f  #0000003f
        :pswitch_2f  #00000040
        :pswitch_396  #00000041
        :pswitch_34e  #00000042
        :pswitch_344  #00000043
        :pswitch_33d  #00000044
        :pswitch_339  #00000045
        :pswitch_332  #00000046
        :pswitch_2bc  #00000047
        :pswitch_2a6  #00000048
        :pswitch_286  #00000049
        :pswitch_2f  #0000004a
        :pswitch_2f  #0000004b
        :pswitch_2f  #0000004c
        :pswitch_270  #0000004d
        :pswitch_2f  #0000004e
        :pswitch_339  #0000004f
        :pswitch_253  #00000050
        :pswitch_2f  #00000051
        :pswitch_24d  #00000052
        :pswitch_237  #00000053
        :pswitch_231  #00000054
        :pswitch_214  #00000055
        :pswitch_2bc  #00000056
        :pswitch_1ee  #00000057
        :pswitch_1e8  #00000058
        :pswitch_1e0  #00000059
        :pswitch_1c1  #0000005a
        :pswitch_2f  #0000005b
        :pswitch_2f  #0000005c
        :pswitch_2f  #0000005d
        :pswitch_3c2  #0000005e
        :pswitch_3c2  #0000005f
        :pswitch_2f  #00000060
        :pswitch_1a0  #00000061
        :pswitch_181  #00000062
        :pswitch_17b  #00000063
        :pswitch_165  #00000064
        :pswitch_14f  #00000065
        :pswitch_2f  #00000066
        :pswitch_2bc  #00000067
        :pswitch_181  #00000068
        :pswitch_2f  #00000069
        :pswitch_134  #0000006a
        :pswitch_11e  #0000006b
        :pswitch_fe  #0000006c
        :pswitch_e7  #0000006d
        :pswitch_df  #0000006e
        :pswitch_2f  #0000006f
        :pswitch_c4  #00000070
        :pswitch_2f  #00000071
        :pswitch_be  #00000072
        :pswitch_b0  #00000073
        :pswitch_a8  #00000074
        :pswitch_8e  #00000075
        :pswitch_88  #00000076
        :pswitch_76  #00000077
        :pswitch_70  #00000078
        :pswitch_68  #00000079
        :pswitch_31  #0000007a
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .registers 2

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_b

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    sub-int/2addr v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v0, :cond_31

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v1, :cond_2b

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2b

    add-int v6, v5, v2

    int-to-char v5, v6

    :cond_2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .registers 6

    sparse-switch p2, :sswitch_data_64

    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_62

    :sswitch_9
    const/4 v0, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_20
    goto :goto_62

    :sswitch_21
    const/4 v0, 0x0

    :goto_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v1

    goto :goto_41

    :cond_37
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v1

    :cond_41
    :goto_41
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_49
    goto :goto_62

    :sswitch_4a
    const/4 v0, 0x0

    :goto_4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_61

    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_61
    nop

    :goto_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        -0x1 -> :sswitch_4a
        0x23 -> :sswitch_21
        0x5e -> :sswitch_9
    .end sparse-switch
.end method

.method private outputYear(IZZI)V
    .registers 19

    move-object v0, p0

    move/from16 v1, p4

    const/16 v2, 0x64

    rem-int/lit8 v3, p1, 0x64

    div-int/lit8 v4, p1, 0x64

    div-int/lit8 v5, v3, 0x64

    add-int/2addr v4, v5

    rem-int/lit8 v3, v3, 0x64

    if-gez v3, :cond_17

    if-lez v4, :cond_17

    add-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    :cond_17
    if-gez v4, :cond_1f

    if-lez v3, :cond_1f

    add-int/lit8 v3, v3, -0x64

    add-int/lit8 v4, v4, 0x1

    :cond_1f
    :goto_1f
    const/4 v5, 0x0

    const-string v6, "%d"

    const-string v7, "%2d"

    const/4 v8, 0x1

    const-string v9, "%02d"

    if-eqz p2, :cond_46

    if-nez v4, :cond_35

    if-gez v3, :cond_35

    iget-object v10, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string v11, "-0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_35
    iget-object v10, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v9, v7, v6, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_46
    :goto_46
    if-eqz p3, :cond_5e

    if-gez v3, :cond_4c

    neg-int v10, v3

    goto :goto_4d

    :cond_4c
    move v10, v3

    :goto_4d
    iget-object v11, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v9, v7, v6, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v11, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_5e
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    return-object v3

    :catchall_21
    move-exception v1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    throw v1
.end method

.method formatMillisWithFixedFormat(J)Ljava/lang/String;
    .registers 8

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
