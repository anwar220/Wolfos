# classes3.dex

.class public final synthetic Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Landroid/service/tracing/TraceReportService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/tracing/TraceReportService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;->f$0:Landroid/service/tracing/TraceReportService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;->f$0:Landroid/service/tracing/TraceReportService;

    invoke-static {v0, p1}, Landroid/service/tracing/TraceReportService;->$r8$lambda$mNBkomUtoeG9lkENLsINm4z-yjQ(Landroid/service/tracing/TraceReportService;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
