# classes3.dex

.class public final synthetic Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/timezone/TimeZoneProviderService;

.field public final synthetic f$1:Landroid/service/timezone/TimeZoneProviderSuggestion;


# direct methods
.method public synthetic constructor <init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    iput-object p2, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;->f$1:Landroid/service/timezone/TimeZoneProviderSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;->f$1:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v0, v1}, Landroid/service/timezone/TimeZoneProviderService;->lambda$reportSuggestion$0$android-service-timezone-TimeZoneProviderService(Landroid/service/timezone/TimeZoneProviderSuggestion;)V

    return-void
.end method
