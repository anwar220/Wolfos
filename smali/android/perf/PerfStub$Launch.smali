# classes3.dex

.class public Landroid/perf/PerfStub$Launch;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/perf/PerfStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Launch"
.end annotation


# static fields
.field public static final ACTIVITY_LAUNCH_BOOST:I = 0xa

.field public static final BOOST_GAME:I = 0x4

.field public static final BOOST_V1:I = 0x1

.field public static final BOOST_V2:I = 0x2

.field public static final BOOST_V3:I = 0x3

.field public static final RESERVED_1:I = 0x5

.field public static final RESERVED_2:I = 0x6

.field public static final RESERVED_3:I = 0x7

.field public static final RESERVED_4:I = 0x8

.field public static final RESERVED_5:I = 0x9

.field public static final TYPE_ATTACH_APPLICATION:I = 0x67

.field public static final TYPE_SERVICE_START:I = 0x64

.field public static final TYPE_START_APP_FROM_BG:I = 0x66

.field public static final TYPE_START_PROC:I = 0x65


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
