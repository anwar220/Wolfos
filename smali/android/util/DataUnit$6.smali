# classes3.dex

.class final enum Landroid/util/DataUnit$6;
.super Landroid/util/DataUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/DataUnit;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/util/DataUnit$6-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/util/DataUnit$6;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public toBytes(J)J
    .registers 5

    const-wide/32 v0, 0x40000000

    mul-long/2addr v0, p1

    return-wide v0
.end method
