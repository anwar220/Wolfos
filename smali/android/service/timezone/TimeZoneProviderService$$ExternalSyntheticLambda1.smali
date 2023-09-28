# classes3.dex

.class public final synthetic Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/timezone/TimeZoneProviderService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/timezone/TimeZoneProviderService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderService;->lambda$reportUncertain$1$android-service-timezone-TimeZoneProviderService()V

    return-void
.end method
