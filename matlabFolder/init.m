
javaaddpath([pwd, '/jars/scala-library-2.10.2.jar'])
javaaddpath([pwd, '/jars/spire-macros_2.10-0.6.0.jar'])
javaaddpath([pwd, '/jars/spire_2.10-0.6.0.jar'])
javaaddpath([pwd, '/jars/snakeyaml-1.13.jar'])
javaaddpath([pwd, '/jars/faacets_2.10-1.0.jar'])
javaaddpath([pwd, '/jars/alasc_2.10-0.1.jar'])
javaaddpath([pwd, '/jars/polyta_2.10-0.1.jar'])
javaaddpath([pwd, '/jars/faacetsmatlab_2.10-1.0.jar'])
javaaddpath([pwd, '/jars/faacetsfamilies_2.10-1.0.jar'])


%%
return

a = net.alasc.Perm([1 2 4 0 3])
javaMethod('$times',a,a)

scenario = javaMethod('apply','com.faacets.Scenario','{[2 2] [2 2]}')


methods('com.faacets.alg.immutable.QVector')
methodsview('spire.math.Rational')

rat=spire.math.Rational.apply(3,4)
list = com.faacets.alg.immutable.QVector.build([rat rat rat rat rat rat rat rat rat])

% Let's define some constants
FRepr = com.faacets.matlab.MatlabHelpers.repr('FRepr'); % Full probability
FCRepr = com.faacets.matlab.MatlabHelpers.repr('FCRepr'); % Full Correlators
NCRepr = com.faacets.matlab.MatlabHelpers.repr('NCRepr'); % No-signalling Correlators
FGRepr = com.faacets.matlab.MatlabHelpers.repr('FGRepr'); % 'Full' Collins-Gisin
NGRepr = com.faacets.matlab.MatlabHelpers.repr('NGRepr'); % No-signalling Collins-Gisin
SRepr = com.faacets.matlab.MatlabHelpers.repr('SRepr'); % e_ijk : strategies correlators
QRepr = com.faacets.matlab.MatlabHelpers.repr('QRepr'); % strategies weights


com.faacets.Bra(scenario, NCRepr, com.faacets.matlab.MatlabHelpers.immutableQVector([1 1 1 1 1 1 1 1 1],1))

com.faacets.families.CollinsGisin2004.apply(2,2)
