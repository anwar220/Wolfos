# classes3.dex

.class public Landroid/os/InputConstants;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x1388

    sput v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
