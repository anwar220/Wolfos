# classes3.dex

.class public final Landroid/timezone/TzDataSetVersion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/timezone/TzDataSetVersion$TzDataSetException;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;


# direct methods
.method private constructor <init>(Lcom/android/i18n/timezone/TzDataSetVersion;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TzDataSetVersion;

    iput-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    return-void
.end method

.method public static currentFormatMajorVersion()I
    .registers 1

    invoke-static {}, Lcom/android/i18n/timezone/TzDataSetVersion;->currentFormatMajorVersion()I

    move-result v0

    return v0
.end method

.method public static currentFormatMinorVersion()I
    .registers 1

    invoke-static {}, Lcom/android/i18n/timezone/TzDataSetVersion;->currentFormatMinorVersion()I

    move-result v0

    return v0
.end method

.method public static isCompatibleWithThisDevice(Landroid/timezone/TzDataSetVersion;)Z
    .registers 2

    iget-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-static {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->isCompatibleWithThisDevice(Lcom/android/i18n/timezone/TzDataSetVersion;)Z

    move-result v0

    return v0
.end method

.method public static read()Landroid/timezone/TzDataSetVersion;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/timezone/TzDataSetVersion;

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->readTimeZoneModuleVersion()Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/timezone/TzDataSetVersion;-><init>(Lcom/android/i18n/timezone/TzDataSetVersion;)V
    :try_end_9
    .catch Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Landroid/timezone/TzDataSetVersion$TzDataSetException;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/timezone/TzDataSetVersion;

    iget-object v1, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    iget-object v2, v0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/TzDataSetVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getFormatMajorVersion()I
    .registers 2

    iget-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getFormatMajorVersion()I

    move-result v0

    return v0
.end method

.method public getFormatMinorVersion()I
    .registers 2

    iget-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getFormatMinorVersion()I

    move-result v0

    return v0
.end method

.method public getRevision()I
    .registers 2

    iget-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRevision()I

    move-result v0

    return v0
.end method

.method public getRulesVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/timezone/TzDataSetVersion;->mDelegate:Lcom/android/i18n/timezone/TzDataSetVersion;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
