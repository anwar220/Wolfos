# classes3.dex

.class public final Landroid/os/SystemProperties$Handle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handle"
.end annotation


# instance fields
.field private final mNativeHandle:J


# direct methods
.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    return-void
.end method

.method synthetic constructor <init>(JLandroid/os/SystemProperties$Handle-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/SystemProperties$Handle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->-$$Nest$smnative_get(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Z)Z
    .registers 4

    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/os/SystemProperties;->-$$Nest$smnative_get_boolean(JZ)Z

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4

    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/os/SystemProperties;->-$$Nest$smnative_get_int(JI)I

    move-result v0

    return v0
.end method

.method public getLong(J)J
    .registers 5

    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/SystemProperties;->-$$Nest$smnative_get_long(JJ)J

    move-result-wide v0

    return-wide v0
.end method
