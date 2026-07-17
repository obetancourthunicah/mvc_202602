<?php

namespace Controllers\Mnt;

use Controllers\PrivateController;
use Views\Renderer;
use Dao\Mantenimiento\WcResult as ResultDAO;

const RESULT_LIST_VIEW = 'mnt/lista';

const RESULT_INS_MODE = 'Controllers\Mnt\ResultList\INS';
const RESULT_UPD_MODE = 'Controllers\Mnt\ResultList\UPD';
const RESULT_DEL_MODE = 'Controllers\Mnt\ResultList\DEL';
const RESULT_DSP_MODE = 'Controllers\Mnt\ResultList\DSP';

class ResultList extends PrivateController
{

    public function run(): void
    {
        $resultados["resultados"] = ResultDAO::getAll();
        $resultados["RESULT_INS_MODE"] = $this->isFeatureAutorized(RESULT_INS_MODE);
        $resultados["RESULT_UPD_MODE"] = $this->isFeatureAutorized(RESULT_UPD_MODE);
        $resultados["RESULT_DEL_MODE"] = $this->isFeatureAutorized(RESULT_DEL_MODE);
        $resultados["RESULT_DSP_MODE"] = $this->isFeatureAutorized(RESULT_DSP_MODE);
        Renderer::render(
            RESULT_LIST_VIEW,
            $resultados
        );
    }
}
