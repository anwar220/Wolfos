# classes3.dex

.class public final Landroid/service/SensorDirectConnectionProto$SensorProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorDirectConnectionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorProto"
.end annotation


# static fields
.field public static final RATE:J = 0x10500000002L

.field public static final SENSOR:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Landroid/service/SensorDirectConnectionProto;


# direct methods
.method public constructor <init>(Landroid/service/SensorDirectConnectionProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/SensorDirectConnectionProto$SensorProto;->this$0:Landroid/service/SensorDirectConnectionProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
