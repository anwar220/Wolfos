# classes3.dex

.class public final synthetic Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->lambda$getVolumeGroupIdForLegacyStreamType$0(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
