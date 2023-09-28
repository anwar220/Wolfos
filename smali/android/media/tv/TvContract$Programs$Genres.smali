# classes2.dex

.class public final Landroid/media/tv/TvContract$Programs$Genres;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$Programs$Genres$Genre;
    }
.end annotation


# static fields
.field public static final ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field public static final ARTS:Ljava/lang/String; = "ARTS"

.field private static final CANONICAL_GENRES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMEDY:Ljava/lang/String; = "COMEDY"

.field private static final COMMA:C = ','

.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final DOUBLE_QUOTE:C = '\"'

.field public static final DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final EDUCATION:Ljava/lang/String; = "EDUCATION"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final GAMING:Ljava/lang/String; = "GAMING"

.field public static final LIFE_STYLE:Ljava/lang/String; = "LIFE_STYLE"

.field public static final MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final NEWS:Ljava/lang/String; = "NEWS"

.field public static final PREMIER:Ljava/lang/String; = "PREMIER"

.field public static final SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final TECH_SCIENCE:Ljava/lang/String; = "TECH_SCIENCE"

.field public static final TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "FAMILY_KIDS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "SPORTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "SHOPPING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "MOVIES"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "COMEDY"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "TRAVEL"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "DRAMA"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "EDUCATION"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "ANIMAL_WILDLIFE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "GAMING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "ARTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "ENTERTAINMENT"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "LIFE_STYLE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "PREMIER"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "TECH_SCIENCE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_9
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v2, :cond_64

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_82

    goto :goto_5d

    :sswitch_3f
    if-nez v3, :cond_5d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_52

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    goto :goto_61

    :sswitch_59
    if-nez v3, :cond_5d

    const/4 v3, 0x1

    goto :goto_61

    :cond_5d
    :goto_5d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_75

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    :sswitch_data_82
    .sparse-switch
        0x22 -> :sswitch_59
        0x2c -> :sswitch_3f
    .end sparse-switch
.end method

.method public static varargs encode([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    array-length v2, p0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_21

    aget-object v4, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/media/tv/TvContract$Programs$Genres;->encodeToCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static encodeToCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_24

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    sparse-switch v3, :sswitch_data_2a

    goto :goto_1e

    :sswitch_16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :sswitch_1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_2a
    .sparse-switch
        0x22 -> :sswitch_1a
        0x2c -> :sswitch_16
    .end sparse-switch
.end method

.method public static isCanonical(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
