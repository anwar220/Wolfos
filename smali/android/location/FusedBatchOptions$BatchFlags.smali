# classes2.dex

.class public final Landroid/location/FusedBatchOptions$BatchFlags;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchFlags"
.end annotation


# static fields
.field public static CALLBACK_ON_LOCATION_FIX:I

.field public static WAKEUP_ON_FIFO_FULL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Landroid/location/FusedBatchOptions$BatchFlags;->WAKEUP_ON_FIFO_FULL:I

    const/4 v0, 0x2

    sput v0, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method