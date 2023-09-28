# classes3.dex

.class final Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BeginCancelHandoverRequest"
.end annotation


# instance fields
.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final cid:I


# direct methods
.method constructor <init>(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    iput-object p2, p0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method
